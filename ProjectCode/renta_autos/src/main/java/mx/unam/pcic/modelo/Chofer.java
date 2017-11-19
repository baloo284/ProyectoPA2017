package mx.unam.pcic.modelo;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "chofer", catalog = "rentaautosdb")
public class Chofer implements java.io.Serializable{
    private static final long serialVersionUID = 1L;

    private int idchofer;
    private String direccion;
    private String telefono;
    private Date fechaalta;
    private Date fechabaja;
    private String estado;
    private String comprobante;

    /**
     *  get the idchofer
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idchofer")
    public int getIdChofer() {
        return idchofer;
    }

    /**
     *  set the idchofer
     */
    public void setIdChofer(int id) {
        this.idchofer = id;
    }

    /**
     * get direccion
     */
    @Column (name = "direccion", nullable = false, length = 200)
    public String getDireccion() {
        return direccion;
    }

    /**
     * set direccion
     */
    public void setDireccion(String dir) {
        this.direccion = dir;
    }

    /**
     * get telefono
     */
    @Column (name = "telefono", nullable = false, length = 20)
    public String getTelefono() {
        return telefono;
    }

    /**
     * set telefono
     */
    public void setTelefono(String tel) {
        this.telefono = tel;
    }

    /**
     * get fechaalta
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "fechaalta", nullable = false)
    public Date getFechaAlta() {
        return fechaalta;
    }

    /**
     * set fechaalta
     */
    public void setFechaAlta(Date fechaa) {
        this.fechaalta = fechaa;
    }

    /**
     * get fechabaja
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "fechabaja", nullable = false)
    public Date getFechaBaja() {
        return fechabaja;
    }

    /**
     * set fechabaja
     */
    public void setFechaBaja(Date fechab) {
        this.fechabaja = fechab;
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
     * get comprobante
     */
    @Column (name = "comprobante", nullable = false, length = 45)
    public String getComprobante() {
        return comprobante;
    }

    /**
     * set comprobante
     */
    public void setComprobante(String com) {
        this.comprobante = com;
    }



}
