package mx.unam.pcic.modelo;

import javax.persistence.*;

@Entity
@Table(name = "chofer", catalog = "rentaautosdb")
public class Zona implements java.io.Serializable{
    private static final long serialVersionUID = 1L;

    private int idzona;
    private String municipio;
    private String colonia;
    private String entidad;

    /**
     *  get the idzona
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idzona")
    public int getIdzona() {
        return idzona;
    }

    /**
     *  set the idzona
     */
    public void setIdzona(int id) {
        this.idzona = id;
    }


    /**
     * get entidad
     */
    @Column (name = "entidad", nullable = false, length = 45)
    public String getEntidad() {
        return entidad;
    }

    /**
     * set entidad
     */
    public void setEntidad(String est) {
        this.entidad = est;
    }

    /**
     * get municipio
     */
    @Column (name = "municipio", nullable = false, length = 45)
    public String getMunicipio() {
        return municipio;
    }

    /**
     * set municipio
     */
    public void setMunicipio(String mun) {
        this.municipio = mun;
    }

    /**
     * get colonia
     */
    @Column (name = "colonia", nullable = false, length = 45)
    public String getColonia() {
        return colonia;
    }

    /**
     * set colonia
     */
    public void setColonia(String col) {
        this.colonia = col;
    }



}