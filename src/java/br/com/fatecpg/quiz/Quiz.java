package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author AnaBertini
 */
public class Quiz {
    private static ArrayList<Questao> questoes;
    private static ArrayList<Questao> teste;
    private Usuario usuario;
    
    
    public static ArrayList<Questao> gerarQuestoes(){
        if(questoes==null){
            questoes = new ArrayList<>();
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            questoes.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
        }
        return questoes;
    }
    
    public static ArrayList<Questao> getTeste(){
        Random rand = new Random();
        for(int i=0; i<5; i++){
            int n = rand.nextInt(15);
            teste.add(questoes.get(n));
        }
        return teste;
    }
    
//    int random = randomGenerator.nextInt(4);
//            if (!numbers.contains(random)) {
//                numbers.add(random);
//            }
}