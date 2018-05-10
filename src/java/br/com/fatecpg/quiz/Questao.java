package br.com.fatecpg.quiz;

/**
 *
 * @author AnaBertini
 */
public class Questao {
    private String questao;
    private String pergunta;
    private String[] alternativas;

    public Questao(String questao, String pergunta, String[] alternativas) {
        this.questao = questao;
        this.pergunta = pergunta;
        this.alternativas = alternativas;
    }

    public String getQuestao() {
        return questao;
    }

    public void setQuestao(String questao) {
        this.questao = questao;
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

    public String[] getAlternativas() {
        return alternativas;
    }

    public void setAlternativas(String[] alternativas) {
        this.alternativas = alternativas;
    }
    
    
}
