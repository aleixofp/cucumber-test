package model;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class Formulario {

    private String formKey;
    private List<Componente> componentList;

    public void init(){
        this.formKey = UUID.randomUUID().toString();
        this.componentList = new ArrayList<>();
    }

    public String getFormKey() {
        return formKey;
    }

    public void setFormKey(String formKey) {
        this.formKey = formKey;
    }

    public List<Componente> getComponentList() {
        return componentList;
    }

    public void setComponentList(List<Componente> componentList) {
        this.componentList = componentList;
    }

    public void addComponentList(Componente component){
        this.componentList.add(component);
    }
}
