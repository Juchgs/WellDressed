/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernatePersistent.fashionista;

import java.awt.Image;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "peca")
public class Peca {
  
  @Id
  @Column(name = "cod_peca")
  private Integer cod_peca;
  
  @Column(name = "favoritas")
  private boolean favoritas;

  @Column(name = "cod_estilo")
  private Integer cod_estilo;
  
  @Column(name = "cod_tipo_acessorio")
  private Integer cod_tipo_acessorio;
  
  @Column(name = "cod_material")
  private Integer cod_material;
 
  @Column(name = "cod_tipo_roupa")
  private Integer cod_tipo_roupa;
  
  @Column(name = "cod_tipo_sapato")
  private Integer cod_tipo_sapato;
  
  @Column(name = "cod_tipo_peca")
  private Integer cod_tipo_peca;
  
  @Column(name = "foto")
  private Byte foto;

    /**
     * @return the cod_peca
     */
    public Integer getCod_peca() {
        return cod_peca;
    }

    /**
     * @param cod_peca the cod_peca to set
     */
    public void setCod_peca(Integer cod_peca) {
        this.cod_peca = cod_peca;
    }

    /**
     * @return the favoritas
     */
    public boolean isFavoritas() {
        return favoritas;
    }

    /**
     * @param favoritas the favoritas to set
     */
    public void setFavoritas(boolean favoritas) {
        this.favoritas = favoritas;
    }

    /**
     * @return the cod_estilo
     */
    public Integer getCod_estilo() {
        return cod_estilo;
    }

    /**
     * @param cod_estilo the cod_estilo to set
     */
    public void setCod_estilo(Integer cod_estilo) {
        this.cod_estilo = cod_estilo;
    }

    /**
     * @return the cod_tipo_acessorio
     */
    public Integer getCod_tipo_acessorio() {
        return cod_tipo_acessorio;
    }

    /**
     * @param cod_tipo_acessorio the cod_tipo_acessorio to set
     */
    public void setCod_tipo_acessorio(Integer cod_tipo_acessorio) {
        this.cod_tipo_acessorio = cod_tipo_acessorio;
    }

    /**
     * @return the cod_material
     */
    public Integer getCod_material() {
        return cod_material;
    }

    /**
     * @param cod_material the cod_material to set
     */
    public void setCod_material(Integer cod_material) {
        this.cod_material = cod_material;
    }

    /**
     * @return the cod_tipo_roupa
     */
    public Integer getCod_tipo_roupa() {
        return cod_tipo_roupa;
    }

    /**
     * @param cod_tipo_roupa the cod_tipo_roupa to set
     */
    public void setCod_tipo_roupa(Integer cod_tipo_roupa) {
        this.cod_tipo_roupa = cod_tipo_roupa;
    }

    /**
     * @return the cod_tipo_sapato
     */
    public Integer getCod_tipo_sapato() {
        return cod_tipo_sapato;
    }

    /**
     * @param cod_tipo_sapato the cod_tipo_sapato to set
     */
    public void setCod_tipo_sapato(Integer cod_tipo_sapato) {
        this.cod_tipo_sapato = cod_tipo_sapato;
    }

    /**
     * @return the cod_tipo_peca
     */
    public Integer getCod_tipo_peca() {
        return cod_tipo_peca;
    }

    /**
     * @param cod_tipo_peca the cod_tipo_peca to set
     */
    public void setCod_tipo_peca(Integer cod_tipo_peca) {
        this.cod_tipo_peca = cod_tipo_peca;
    }

    /**
     * @return the foto
     */
    public Byte getFoto() {
        return foto;
    }

    /**
     * @param foto the foto to set
     */
    public void setFoto(Byte foto) {
        this.foto = foto;
    }
    
}
