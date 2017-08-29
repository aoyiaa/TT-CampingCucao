/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package campingcucao.calculos;

/**
 *
 * @author Mauricio
 */
public class Calculo {
    private int total = 0;
    
    public int getCalculo(int pZona, int D){   
        this.total = pZona * D;
        return total;
    }
}
