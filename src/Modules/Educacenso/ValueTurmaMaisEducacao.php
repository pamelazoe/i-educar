<?php

namespace iEducar\Modules\Educacenso;

use iEducar\Modules\Educacenso\Model\DependenciaAdministrativaEscola;
use iEducar\Modules\Educacenso\Model\ModalidadeTurma;
use iEducar\Modules\Educacenso\Model\TipoAtendimentoTurma;
use iEducar\Modules\Educacenso\Model\TipoMediacaoDidaticoPedagogico;

class ValueTurmaMaisEducacao implements ValueInterface
{

    private $dependenciaAdministrativa;
    private $tipoAtendimento;
    private $modalidade;
    private $etapaEnsino;
    private $turmaMaisEducacao;
    private $tipoMediacao;

    public function __construct(
        $dependenciaAdministrativa,
        $tipoAtendimento,
        $modalidade,
        $etapaEnsino,
        $turmaMaisEducacao,
        $tipoMediacao
    ) {
        $this->dependenciaAdministrativa = $dependenciaAdministrativa;
        $this->tipoAtendimento = $tipoAtendimento;
        $this->modalidade = $modalidade;
        $this->etapaEnsino = $etapaEnsino;
        $this->turmaMaisEducacao = $turmaMaisEducacao;
        $this->tipoMediacao = $tipoMediacao;
    }

    public function getValue()
    {
        if ($this->tipoMediacao != TipoMediacaoDidaticoPedagogico::PRESENCIAL) {
            return null;
        }

        if (!in_array($this->dependenciaAdministrativa, $this->getArrayDependencias())) {
            return null;
        }

        if (in_array($this->tipoAtendimento, $this->getArrayAtendimentos())) {
            return null;
        }

        if (!$this->atendeQuartaRegra()) {
            return null;
        }

        return $this->turmaMaisEducacao;
    }

    private function getArrayDependencias()
    {
        return [
            DependenciaAdministrativaEscola::ESTADUAL,
            DependenciaAdministrativaEscola::MUNICIPAL,
        ];
    }

    private function getArrayAtendimentos()
    {
        return [
            TipoAtendimentoTurma::CLASSE_HOSPITALAR,
            TipoAtendimentoTurma::AEE,
        ];
    }

    private function getArrayEtapas()
    {
        return [
            '4',
            '5',
            '6',
            '7',
            '8',
            '9',
            '10',
            '11',
            '12',
            '13',
            '14',
            '15',
            '16',
            '17',
            '18',
            '19',
            '20',
            '21',
            '22',
            '23',
            '24',
            '41',
            '25',
            '26',
            '27',
            '28',
            '29',
            '30',
            '31',
            '32',
            '33',
            '34',
            '35',
            '36',
            '37',
            '38',
        ];
    }

    private function atendeQuartaRegra()
    {
        if ($this->tipoAtendimento == TipoAtendimentoTurma::ATIVIDADE_COMPLEMENTAR) {
            return true;
        }

        if ($this->modalidade == ModalidadeTurma::EJA) {
            return false;
        }

        if (!in_array($this->etapaEnsino, $this->getArrayEtapas())) {
            return false;
        }

        return true;
    }
}