package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

/**
 *
 * @author AnaBertini
 */
public class Quiz {

    public static ArrayList<Quiz> topDez = new ArrayList<>();
    public static ArrayList<Quiz> ultimosDez = new ArrayList<>();
    private ArrayList<Questao> test;

    private Usuario user;
    private Date dataRealizacao;
    private double pontuacao;
    private static Questao[] questoes = new Questao[]{
        new Questao("pergunta 1", "11", new String[]{"11", "12", "13", "14"}),
        new Questao("pergunta 2", "22", new String[]{"21", "22", "23", "24"}),
        new Questao("pergunta 3", "33", new String[]{"31", "32", "33", "34"}),
        new Questao("pergunta 4", "44", new String[]{"41", "42", "43", "44"}),
        new Questao("pergunta 5", "51", new String[]{"51", "52", "53", "54"}),
        new Questao("pergunta 6", "62", new String[]{"61", "62", "63", "64"}),
        new Questao("pergunta 7", "resposta", new String[]{"71", "72", "73", "74"}),
        new Questao("pergunta 8", "resposta", new String[]{"1", "2", "3", "4"}),
        new Questao("pergunta 9", "resposta", new String[]{"1", "2", "3", "4"}),
        new Questao("pergunta 10", "resposta", new String[]{"1", "2", "3", "4"}),
        new Questao("pergunta 11", "resposta", new String[]{"1", "2", "3", "4"}),
        new Questao("pergunta 12", "resposta", new String[]{"1", "2", "3", "4"}),};

    public Quiz(Usuario user) {
        this.user = user;
        test = new ArrayList<>(10);
        for (int i = 0; i < 10; i++) {
            int rand;
            do {
                rand = (int) (Math.random() * questoes.length);
            } while (test.contains(questoes[rand]));
            test.add(questoes[rand]);
        }
    }
    
    public Questao getQuestao(int i){
        Questao q = test.get(i);
        return q;
    }

    public Usuario getUser() {
        return this.user;
    }

    public Date getDataRealizacao() {
        return dataRealizacao;
    }

    public double getPontuacao() {
        return pontuacao;
    }

    public void finalizaTeste(double pontuacao) {
        this.pontuacao = pontuacao;
        this.dataRealizacao = Calendar.getInstance().getTime();
        this.user.getTestesFinalizados().add(this);
        ultimosDez.add(0, this);

        if (ultimosDez.size() > 10) {
            ultimosDez.remove(10);
        }

        int size = topDez.size();
        if (size == 0) {
            topDez.add(this);
        } else {
            int i = size;
            while (i > 0 && this.pontuacao > ultimosDez.get(i - 1).pontuacao) {
                i--;
            }
            if (i < 10) {
                ultimosDez.add(i, this);
            }
            if (ultimosDez.size() > 10) {
                ultimosDez.remove(10);
            }
        }
    }

}
