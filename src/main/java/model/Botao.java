package model;

public class Botao extends Componente {

    private String label;

    public Botao(String id, String label){
        this.setId(id);
        this.label = label;

    }

    public void click(){
        if (this.label != null) System.out.println(label);
    }

    public String getLabel(){
        return this.label;
    }

    public void setLabel(String label){
        this.label = label;
    }

}
