/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author AnaBertini Classe de testes de funcoes a ser excluida!!!
 */
public class TesteFuncoes {

    public static void main(String[] args) {
        ArrayList<Integer> numbers = new ArrayList<Integer>();
        Random randomGenerator = new Random();
        while (numbers.size() < 5) {
            int random = randomGenerator.nextInt(4);
            if (!numbers.contains(random)) {
                numbers.add(random);
            }
        }
        for(int i=0; i<4; i++){
            System.out.println(numbers.get(i));
        }
    }

    public void gerarRandomico(int n) {
        ArrayList<Integer> vetor = new ArrayList<>(n);
        Random rand = new Random();
        for (int i = 0; i < n; i++) {
            Integer r = rand.nextInt();
            System.out.println(vetor.add(r));
        }
    }
}
