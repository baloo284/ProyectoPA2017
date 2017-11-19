package mx.unam.pcic.modelo;

import javax.persistence.*;
import java.util.Date;

    @Entity
    @Table(name = "dueño", catalog = "rentaautosdb")
    public class Dueño implements java.io.Serializable{
        private static final long serialVersionUID = 1L;

        private int iddueño;
        private String direccion;
        private String telefono;
        private Date fechaalta;
        private Date fechabaja;
        private String estado;

        /**
         *  get the iddueño
         */
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "iddueño")
        public int getIdDueño() {
            return iddueño;
        }

        /**
         *  set the iddueño
         */
        public void setIdDueño(int id) {
            this.iddueño = id;
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



    }
