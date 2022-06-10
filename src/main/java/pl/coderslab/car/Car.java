package pl.coderslab.car;

import pl.coderslab.suspension.Suspension;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class Car {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;
    private String name;
    private int suspF;
    private int suspR;

    @ManyToOne
    @NotNull
    private Suspension suspension;

    public Car(long id, String name, Suspension suspension) {
        this.id = id;
        this.name = name;
        this.suspension = suspension;
    }

    public int getSuspF() {
        return suspF;
    }

    public void setSuspF(int suspF) {
        this.suspF = suspF;
    }

    public int getSuspR() {
        return suspR;
    }

    public void setSuspR(int suspR) {
        this.suspR = suspR;
    }

    public Car() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Suspension getSuspension() {
        return suspension;
    }

    public void setSuspension(Suspension suspension) {
        this.suspension = suspension;
    }
}
