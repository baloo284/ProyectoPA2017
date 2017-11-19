package mx.unam.pcic.modelo;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "pago", catalog = "rentaautosdb")
public class Pago implements java.io.Serializable{
    private static final long serialVersionUID = 1L;

    private int idpago;
    private Servicio servicio;
    private String tipopago;
    private float monto;
    private String estado;

    /**
     *  get the idchofer
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idpago")
    public int getIdpago() {
        return idpago;
    }

    /**
     *  set the idpago
     */
    public void setIdpago(int id) {
        this.idpago = id;
    }

    /**
     * Manejo del campo que servirá como llave foránea, la cual
     * hace referencia a la tabla servicio
     * @return the servicio
     */
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "servicio_idservicio", nullable = false)
    public Servicio getServicio() {
        return servicio;
    }

    /**
     *  servicio to set
     */
    public void setServicio(Servicio serv) {
        this.servicio = serv;
    }

    /**
     * get tipopago
     */
    @Column (name = "tipopago", nullable = false, length = 25)
    public String getTipopago() {
        return tipopago;
    }

    /**
     * set tipopago
     */
    public void setTipopago(String tpago) {
        this.tipopago = tpago;
    }

    /**
     * get monto
     */
    @Column (name = "monto", nullable = false)
    public float getMonto() {
        return monto;
    }

    /**
     * set monto
     */
    public void setMonto(float mon) {
        this.monto = mon;
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


}