/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

import java.util.Arrays;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        if (mnemnonic[0] == "movw"){
            if(mnemnonic.length == 3) {
                if (mnemnonic[2] == "%A") {
                    return "1000";
                } else if (mnemnonic[2] == "%S") {
                    return "0100";
                } else if (mnemnonic[2] == "%D") {
                    return "0010";
                } else {
                    return "0001";
                }
            }else{
                String a = "0";
                String s = "0";
                String d = "0";
                String a_ = "0";
                if (mnemnonic[2] == "%A" || mnemnonic[3] == "%A") {
                    a = "1";
                }if (mnemnonic[2] == "%S" || mnemnonic[3] == "%S") {
                    s = "1";
                }if (mnemnonic[2] == "%D" || mnemnonic[3] == "%D") {
                    d = "1";
                }if (mnemnonic[2] == "(%A)" || mnemnonic[3] == "(%A)"){
                    a_ = "1";
                }
                return a+s+d+a_;
            }

        }else if(mnemnonic[0] == "addw" || mnemnonic[0] == "subw" || mnemnonic[0] == "rsubw" || mnemnonic[0] == "andw" || mnemnonic[0] == "orw"){
            if(mnemnonic[3] == "%A"){
                return "1000";
            }else if(mnemnonic[3] == "%S"){
                return "0100";
            }else if(mnemnonic[3] == "%D"){
                return "0010";
            }else{
                return "0001";
            }

        }else if(mnemnonic.length == 2){
            if(mnemnonic[1] == "%A"){
                return "1000";
            }else if(mnemnonic[1] == "%S"){
                return "0100";
            }else if(mnemnonic[1] == "%D"){
                return "0010";
            }else{
                return "0001";
            }

        }else{
            return "0000";
        }
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        String[] teste = new String[2];
        teste[0] = mnemnonic[1];
        if(mnemnonic.length > 2){
            teste[1] = mnemnonic[2];
        }


        if (mnemnonic[0] == "jg" || mnemnonic[0] == "je" || mnemnonic[0] == "jge" || mnemnonic[0] == "jl" || mnemnonic[0] == "jne" || mnemnonic[0] == "jle" || mnemnonic[0] == "jmp") {
            if (mnemnonic[1] == "%D") {
                return "000001100";
            } else {
                return "001001100";
            }
        }
        else if (mnemnonic[0] == "decw" || (teste[1] == "$1" && mnemnonic[0] == "subw") || (teste[0] == "$1" && mnemnonic[0] == "rsubw")){
            String decTop = "001110";
            String decBot = "110010";

            if (teste[0] == "%A"){
                return "000" + decBot;
            }else if(teste[0] == "(%A)"){
                return "010" + decBot;
            }else if(teste[0] == "%D") {
                return "000" + decTop;
            }else{
                return "001" + decTop;
            }



        }
        else if (mnemnonic[0] == "incw" || (teste[0] == "$1" && mnemnonic[0] == "addw") || (teste[1] == "$1" && mnemnonic[0] == "addw")){
            String incTop = "011111";
            String incBot = "110111";

            if (teste[0] == "%A" || teste[0] == "$1"){
                return "000" + incBot;
            }else if(teste[0] == "(%A)" || teste[0] == "$1"){
                return "010" + incBot;
            }else if(teste[0] == "%D" || teste[0] == "$1") {
                return "000" + incTop;
            }else{
                return "001" + incTop;
            }



        }
        else if (mnemnonic[0] == "movw"){
            String mov0 = "101010";
            String mov1 = "111111";
            String mov2 = "111010";
            String mov3 = "001100";
            String mov4 = "110000";

            if (teste[0] == "%A"){
                return "000" + mov4;
            }else if(teste[0] == "(%A)"){
                return "010" + mov4;
            }else if(teste[0] == "%D") {
                return "000" + mov3;
            }else if (teste[0] == "%S"){
                return "001" + mov3;
            }else if(teste[0] == "$0"){
                return "000" + mov0;
            }else if(teste[0] == "$1"){
                return "000" + mov1;
            }else{
                return "000" + mov2;
            }



        }

        else if (mnemnonic[0] == "orw"){
            String or = "010101";
            if(Arrays.stream(mnemnonic).anyMatch("%A"::equals) && Arrays.stream(mnemnonic).anyMatch("%D"::equals)){
                return "000" + or;
            }else if(Arrays.stream(mnemnonic).anyMatch("%A"::equals) && Arrays.stream(mnemnonic).anyMatch("%S"::equals)){
                return "001" + or;
            }else if(Arrays.stream(mnemnonic).anyMatch("(%A)"::equals) && Arrays.stream(mnemnonic).anyMatch("%D"::equals)){
                return "010" + or;
            }else if(Arrays.stream(mnemnonic).anyMatch("(%A)"::equals) && Arrays.stream(mnemnonic).anyMatch("%S"::equals)){
                return "011" + or;
            }else{
                return "101" + or;
            }
        }
        else if (mnemnonic[0] == "andw"){
            String and = "000000";
            if(Arrays.stream(mnemnonic).anyMatch("%A"::equals) && Arrays.stream(mnemnonic).anyMatch("%D"::equals)){
                return "000" + and;
            }else if(Arrays.stream(mnemnonic).anyMatch("%A"::equals) && Arrays.stream(mnemnonic).anyMatch("%S"::equals)){
                return "001" + and;
            }else if(Arrays.stream(mnemnonic).anyMatch("(%A)"::equals) && Arrays.stream(mnemnonic).anyMatch("%D"::equals)){
                return "010" + and;
            }else if(Arrays.stream(mnemnonic).anyMatch("(%A)"::equals) && Arrays.stream(mnemnonic).anyMatch("%S"::equals)){
                return "011" + and;
            }else{
                return "101" + and;
            }
        }
        else if (mnemnonic[0] == "addw"){
            teste[0] = mnemnonic[1];
            teste[1] = mnemnonic[2];

            String add = "000010";
            if(Arrays.stream(teste).anyMatch("%A"::equals) && Arrays.stream(teste).anyMatch("%D"::equals)){
                return "000" + add;
            }else if(Arrays.stream(teste).anyMatch("%A"::equals) && Arrays.stream(teste).anyMatch("%S"::equals)){
                return "001" + add;
            }else if(Arrays.stream(teste).anyMatch("(%A)"::equals) && Arrays.stream(teste).anyMatch("%D"::equals)){
                return "010" + add;
            }else if(Arrays.stream(teste).anyMatch("(%A)"::equals) && Arrays.stream(teste).anyMatch("%S"::equals)){
                return "011" + add;
            }else{
                return "101" + add;
            }
        }
        else if (mnemnonic[0] == "subw" || mnemnonic[0] == "rsubw"){
            teste[0] = mnemnonic[1];
            teste[1] = mnemnonic[2];

            String subTop = "010011";
            String subBot = "000111";
            if(Arrays.stream(teste).anyMatch("%A"::equals) && Arrays.stream(teste).anyMatch("%D"::equals)){
                if(mnemnonic[0] == "subw") {
                    if (teste[0] == "%A"){
                        return "000" + subBot;
                    }else{
                        return "000" + subTop;
                    }
                }else{
                    if (teste[0] == "%A"){
                        return "000" + subTop;
                    }else{
                        return "000" + subBot;
                    }
                }
            }else if(Arrays.stream(teste).anyMatch("%A"::equals) && Arrays.stream(teste).anyMatch("%S"::equals)){
                if(mnemnonic[0] == "subw") {
                    if (teste[0] == "%A"){
                        return "001" + subBot;
                    }else{
                        return "001" + subTop;
                    }
                }else{
                    if (teste[0] == "%A"){
                        return "001" + subTop;
                    }else{
                        return "001" + subBot;
                    }
                }
            }else if(Arrays.stream(teste).anyMatch("(%A)"::equals) && Arrays.stream(teste).anyMatch("%D"::equals)){
                if(mnemnonic[0] == "subw") {
                    if (teste[0] == "(%A)"){
                        return "010" + subBot;
                    }else{
                        return "010" + subTop;
                    }
                }else{
                    if (teste[0] == "(%A)"){
                        return "010" + subTop;
                    }else{
                        return "010" + subBot;
                    }
                }
            }else if(Arrays.stream(teste).anyMatch("(%A)"::equals) && Arrays.stream(teste).anyMatch("%S"::equals)){
                if(mnemnonic[0] == "subw") {
                    if (teste[0] == "(%A)"){
                        return "011" + subBot;
                    }else{
                        return "011" + subTop;
                    }
                }else{
                    if (teste[0] == "(%A)"){
                        return "011" + subTop;
                    }else{
                        return "011" + subBot;
                    }
                }
            }else{
                if(mnemnonic[0] == "subw") {
                    if (teste[0] == "%D"){
                        return "101" + subBot;
                    }else{
                        return "101" + subTop;
                    }
                }else{
                    if (teste[0] == "%D"){
                        return "101" + subTop;
                    }else{
                        return "101" + subBot;
                    }
                }
            }
        }
        else if (mnemnonic[0] == "negw"){
            String negTop = "001111";
            String negBot = "110011";

            if (teste[0] == "%A"){
                return "000" + negBot;
            }else if(teste[0] == "(%A)"){
                return "010" + negBot;
            }else if(teste[0] == "%D") {
                return "000" + negTop;
            }else{
                return "001" + negTop;
            }

        }
        else if (mnemnonic[0] == "notw"){
            String notTop = "001101";
            String notBot = "110001";

            if (teste[0] == "%A"){
                return "000" + notBot;
            }else if(teste[0] == "(%A)"){
                return "010" + notBot;
            }else if(teste[0] == "%D") {
                return "000" + notTop;
            }else{
                return "001" + notTop;
            }

        }


        return "00";

    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            default: return "000";
            case "jg"  : return "001";
            case "je"  : return "010";
            case "jge"  : return "011";
            case "jl"  : return "100";
            case "jne"  : return "101";
            case "jle"  : return "110";
            case "jmp" : return "111";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int value = Integer.valueOf(symbol);
        String binary = Integer.toBinaryString(value);
        return String.format("%1$16s", binary).replace(" ", "0");
    }

}
