/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zavrsni.osnovnaskola.view;

import java.awt.event.KeyEvent;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.swing.JComponent;
import javax.swing.JOptionPane;
import zavrsni.osnovnaskola.controller.ObradaOperater;
import zavrsni.osnovnaskola.model.Operater;

/**
 *
 * @author WEB DOG
 */
public class Autorizacija extends javax.swing.JFrame {

    /**
     * Creates new form Autorizacija
     */
    public Autorizacija() {
        initComponents();
        setTitle(Aplikacija.NASLOV_APP);
        txtEmail.setText("escobar@edunova.com");
        pswLozinka.setText("edunova");
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        txtEmail = new javax.swing.JTextField();
        pswLozinka = new javax.swing.JPasswordField();
        btnPrijava = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/OSEDUNOVAautorizacija.png"))); // NOI18N

        jLabel2.setText("E-MAIL:");

        jLabel3.setText("LOZINKA:");

        txtEmail.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtEmailKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtEmailKeyReleased(evt);
            }
        });

        pswLozinka.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                pswLozinkaKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                pswLozinkaKeyReleased(evt);
            }
        });

        btnPrijava.setText("PRIJAVA");
        btnPrijava.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrijavaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(44, 44, 44)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtEmail, javax.swing.GroupLayout.DEFAULT_SIZE, 326, Short.MAX_VALUE)
                            .addComponent(jLabel3)
                            .addComponent(jLabel2)
                            .addComponent(pswLozinka)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(81, 81, 81)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(176, 176, 176)
                        .addComponent(btnPrijava)))
                .addContainerGap(47, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(jLabel1)
                .addGap(59, 59, 59)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(13, 13, 13)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(pswLozinka, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btnPrijava, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(21, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnPrijavaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrijavaActionPerformed
        prijaviSe();
    }//GEN-LAST:event_btnPrijavaActionPerformed

    private void pswLozinkaKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pswLozinkaKeyReleased
        
    }//GEN-LAST:event_pswLozinkaKeyReleased

    private void txtEmailKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtEmailKeyReleased
        
    }//GEN-LAST:event_txtEmailKeyReleased

    private void txtEmailKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtEmailKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_ENTER 
                && !txtEmail.getText().isEmpty()){
           pswLozinka.requestFocus();
        }
    }//GEN-LAST:event_txtEmailKeyPressed

    private void pswLozinkaKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pswLozinkaKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_ENTER &&
                pswLozinka.getPassword().length>0){
            prijaviSe();
        }
    }//GEN-LAST:event_pswLozinkaKeyPressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Autorizacija.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Autorizacija.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Autorizacija.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Autorizacija.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Autorizacija().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnPrijava;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPasswordField pswLozinka;
    private javax.swing.JTextField txtEmail;
    // End of variables declaration//GEN-END:variables

    private void prijaviSe() {

        if(txtEmail.getText().isEmpty()){
            obradiGresku(txtEmail, "Obavezno email");
            return;
        }
        
        try {
            InternetAddress email=new InternetAddress(txtEmail.getText());
            email.validate();
        } catch (AddressException e) {
            obradiGresku(txtEmail, "Email nije ispravan");
            return;
        }
        
      
        if(pswLozinka.getPassword().length==0){
            obradiGresku(pswLozinka, "Obavezno lozinka");
            return;
        }
        
        
        ObradaOperater oo = new ObradaOperater();
        Operater o = oo.autoriziraj(txtEmail.getText(), pswLozinka.getPassword());
        
        if(o==null){
            obradiGresku(pswLozinka, "Email i lozinka ne odgovaraju");
            return;
        }
        
        
        Aplikacija.operater=o;
        new Izbornik().setVisible(true);
        dispose();

    }
    
    private void obradiGresku(JComponent komponenta, String poruka){
        komponenta.requestFocus();
        JOptionPane.showMessageDialog(rootPane, poruka);
    }
}