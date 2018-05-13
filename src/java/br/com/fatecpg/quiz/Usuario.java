package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author AnaBertini
 */
public class Usuario {

    public static ArrayList<Usuario> lista = new ArrayList<>();
    private String nome;
    private final ArrayList<Quiz> testesFinalizados;
 
    
    public Usuario(String nome) {
        this.nome = nome;
        this.testesFinalizados = new ArrayList<>();
        lista.add(this);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String name) {
        this.nome = name;
    }

    public ArrayList<Quiz> getTestesFinalizados() {
        return testesFinalizados;
    }

    public double getMaiorPontuacao() {
        if (testesFinalizados.isEmpty()) {
            return 0;
        }
        double sum = 0;
        for (Quiz q : testesFinalizados) {
            sum += q.getPontuacao();
        }
        return sum / (double) testesFinalizados.size();
    } 
    
}
