package mx.unam.pcic.modelo;

import javax.persistence.*;

@Entity
@Table(name = "unidad", catalog = "rentaautosdb")
public class Unidad implements java.io.Serializable{
    private static final long serialVersionUID = 1L;

    private int idunidad;
    private String placa;
    private String modelo;
    private int año;
    private String color;
    private String longitud;
    private String latitud;
    private String estado;
    private Zona zona;
    private Dueño dueño;

    /**
     *  get the idunidad
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idunidad")
    public int getIdunidad() {
        return idunidad;
    }

    /**
     *  set the idchofer
     */
    public void setIdChofer(int id) {
        this.idunidad = id;
    }

    /**
     * get placa
     */
    @Column (name = "placa", nullable = false, length = 45)
    public String getPlaca() {
        return placa;
    }

    /**
     * set placa
     */
    public void setPlaca(String plc) {
        this.placa = plc;
    }

    /**
     * get modelo
     */
    @Column (name = "modelo", nullable = false, length = 45)
    public String getModelo() {
        return modelo;
    }

    /**
     * set modelo
     */
    public void setModelo(String mod) {
        this.modelo = mod;
    }

    /**
     * get año
     */
    @Column (name = "año", nullable = false)
    public int getAño() {
        return año;
    }

    /**
     * set año
     */
    public void setAño(int ano) {
        this.año = ano;
    }

    /**
     * get color
     */
    @Column (name = "color", nullable = false, length = 25)
    public String getColor() {
        return color;
    }

    /**
     * set color
     */
    public void setColor(String col) {
        this.color = col;
    }

    /**
     * get longitud
     */
    @Column (name = "longitud", nullable = false, length = 25)
    public String getLongitud() {
        return longitud;
    }

    /**
     * set longitud
     */
    public void setLongitud(String lon) {
        this.longitud = lon;
    }

    /**
     * get latitud
     */
    @Column (name = "latitud", nullable = false, length = 25)
    public String getLatitud() {
        return latitud;
    }

    /**
     * set latitud
     */
    public void setAño(String lat) {
        this.latitud = lat;
    }

    /**
     * get estado
     */
    @Column (name = "estado", nullable = false, length = 25)
    public String getEstado() {
        return estado;
    }

    /**
     * set estado
     */
    public void setEstado(String est) {
        this.estado = est;
    }

    /**
     * Manejo del campo que servirá como llave foránea, la cual
     * hace referencia a la tabla zona
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "zona_idzona", nullable = false)
    public Zona getZona() {
        return zona;
    }

    /**
     *  servicio to set
     */
    public void setZona(Zona zone) {
        this.zona = zone;
    }

    /**
     * Manejo del campo que servirá como llave foránea, la cual
     * hace referencia a la tabla dueño
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "dueño_iddueño", nullable = false)
    public Dueño getDueño() {
        return dueño;
    }

    /**
     *  servicio to set
     */
    public void setDueño(Dueño du) {
        this.dueño = du;
    }

}

