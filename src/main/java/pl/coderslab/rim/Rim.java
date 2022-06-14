package pl.coderslab.rim;

import pl.coderslab.car.Car;
import pl.coderslab.producer.Producer;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
public class Rim {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private String name;
    @NotNull
    private int avg;  //2 średnica felgi wyrażona w calach
    @NotNull
    private Long width; //1 szerokość felgi wyrażona w calach
    @NotNull
    private double et; //4 odsadzenie
    @NotNull
    private double centreBore; //5 otwór centrujący
    @NotNull
    private int boltsNumber; //6 ilość śrub
    @NotNull
    private int boltPattern; //3 średnica osadzenia śrub
    private String pic;

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    @ManyToMany
    private List<Car> cars;

    @ManyToOne
    private Producer producer;

    public Long getWidth() {
        return width;
    }
    public void setWidth(Long width) {
        this.width = width;
    }
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAvg() {
        return avg;
    }
    public void setAvg(int avg) {
        this.avg = avg;
    }

    public double getEt() {
        return et;
    }
    public void setEt(double et) {
        this.et = et;
    }
    public double getCentreBore() {
        return centreBore;
    }
    public void setCentreBore(double centreBore) {
        this.centreBore = centreBore;
    }
    public int getBoltsNumber() {
        return boltsNumber;
    }
    public void setBoltsNumber(int boltsNumber) {
        this.boltsNumber = boltsNumber;
    }
    public int getBoltPattern() {
        return boltPattern;
    }
    public void setBoltPattern(int boltPattern) {
        this.boltPattern = boltPattern;
    }
    public List<Car> getCars() {
        return cars;
    }
    public void setCars(List<Car> cars) {
        this.cars = cars;
    }
    public Producer getProducer() {
        return producer;
    }
    public void setProducer(Producer producer) {
        this.producer = producer;
    }
}
