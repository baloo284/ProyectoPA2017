package mx.unam.pcic.controlador;
import mx.unam.pcic.logica.HelloWorld;

public class HelloAction extends BaseAction {

    private HelloWorld hello;

    public HelloWorld getHello() {
        return hello;
    }

    public void setHello(HelloWorld hello) {
        this.hello = hello;
    }

    public String showHello(){
        hello = new HelloWorld();
        return "success";
    }



}
