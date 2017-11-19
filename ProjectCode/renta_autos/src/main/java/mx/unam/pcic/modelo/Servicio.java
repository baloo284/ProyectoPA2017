package mx.unam.pcic.modelo;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "servicio", catalog = "rentaautosdb")
public class Servicio implements java.io.Serializable{
    private static final long serialVersionUID = 1L;

    private int idservicio;
    private Date fechainicio;
    private Date fechafin;
    private String estado;
    private Unidad unidad;
    private Chofer chofer;

    /**
     *  get the idservicio
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idservicio")
    public int getIdservicio() {
        return idservicio;
    }

    /**
     *  set the idservicio
     */
    public void setIdservicio(int id) {
        this.idservicio = id;
    }

    /**
     * get fechainicio
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "fechainicio", nullable = false)
    public Date getFechainicio() {
        return fechainicio;
    }

    /**
     * set fechainicio
     */
    public void setFechainicio(Date fechaa) {
        this.fechainicio = fechaa;
    }

    /**
     * get fechafin
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column (name = "fechafin", nullable = false)
    public Date getFechafin() {
        return fechafin;
    }

    /**
     * set fechafin
     */
    public void setFechaFin(Date fechab) {
        this.fechafin = fechab;
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
     * hace referencia a la tabla unidad
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "unidad_idunidad", nullable = false)
    public Unidad getUnidad() {
        return unidad;
    }

    /**
     *  unidad to set
     */
    public void setUnidad(Unidad uni) {
        this.unidad = uni;
    }

    /**
     * Manejo del campo que servirá como llave foránea, la cual
     * hace referencia a la tabla chofer
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "chofer_idchofer", nullable = false)
    public Chofer getChofer() {
        return chofer;
    }

    /**
     *  chofer to set
     */
    public void setChofer(Chofer cho) {
        this.chofer = cho;
    }

}
