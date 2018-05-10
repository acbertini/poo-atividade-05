package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author AnaBertini
 */
public class Quiz {
    private static ArrayList<Questao> test;
    
    public static ArrayList<Questao> getTeste(){
        if(test==null){
            test = new ArrayList<>();
            test.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            test.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            test.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            test.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
            test.add(new Questao("1+2", "1", new String[]{"1", "2", "3"}));
        }
        return test;
    }
}
