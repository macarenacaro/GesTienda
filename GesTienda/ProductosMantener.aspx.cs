using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesTienda
{
    public partial class ProductosMantener : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void FnDeshabilitarControles()
        {
            txtIdProducto.Enabled = false;
            txtDesPro.Enabled = false;
            txtPrePro.Enabled = false;
            ddlIdUnidad.Enabled = false;
            ddlIdTipo.Enabled = false;
        }

        protected void FnHabilitarControles()
        {
            txtIdProducto.Enabled = true;
            txtDesPro.Enabled = true;
            txtPrePro.Enabled = true;
            ddlIdUnidad.Enabled = true;
            ddlIdTipo.Enabled = true;
        }

        protected void grdProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMensajes.Text = "";
            FnDeshabilitarControles();
            string StrIdProducto = grdProductos.SelectedRow.Cells[1].Text;
            string StrCadenaConexion =
            ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string StrComandoSql = "SELECT IdProducto,DesPro,PrePro,IdUnidad,PRODUCTO.IdTipo,DesTip " +
            " FROM PRODUCTO INNER JOIN TIPO ON PRODUCTO.IdTipo = TIPO.IdTipo " +
            "WHERE PRODUCTO.IdProducto = '" + StrIdProducto + "';";
            using (SqlConnection conexion = new SqlConnection(StrCadenaConexion))
            {
                try
                {
                    conexion.Open();
                    SqlCommand comando = conexion.CreateCommand();
                    comando.CommandText = StrComandoSql;
                    SqlDataReader reader = comando.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        txtIdProducto.Text = reader.GetString(0);
                        txtDesPro.Text = reader.GetString(1);
                        txtPrePro.Text = string.Format("{0:C}", reader.GetDecimal(2));
                        ddlIdUnidad.SelectedItem.Selected = false;
                        ddlIdUnidad.SelectedItem.Text = reader.GetString(3);
                        ddlIdTipo.SelectedItem.Selected = false;
                        ddlIdTipo.SelectedItem.Text = reader.GetString(5);
                    }
                    else
                    {
                        lblMensajes.Text = "No existen registros resultantes de la consulta";
                    }
                    reader.Close();
                    btnNuevo.Visible = true;
                    btnEditar.Visible = true;
                    btnEliminar.Visible = true;
                    btnInsertar.Visible = false;
                    btnModificar.Visible = false;
                    btnBorrar.Visible = false;
                    btnCancelar.Visible = false;
                }
                catch (SqlException ex)
                {
                    string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
                    StrError = StrError + "<div>Código: " + ex.Number + "</div>";
                    StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
                    lblMensajes.Text = StrError;
                    return;
                }
            }
        }



        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";
            btnNuevo.Visible = false;
            btnEditar.Visible = false;
            btnEliminar.Visible = false;
            btnInsertar.Visible = true;
            btnModificar.Visible = false;
            btnBorrar.Visible = false;
            btnCancelar.Visible = true;
            txtIdProducto.Text = "";
            txtDesPro.Text = "";
            txtPrePro.Text = Convert.ToString(0);
            ddlIdUnidad.DataBind();
            // Vuelve a enlazar el control para que se actualicen los datos
            ddlIdTipo.DataBind();
            grdProductos.SelectedIndex = -1;
            FnHabilitarControles();
            txtIdProducto.Focus();
        }


        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";
            String strIdProducto, strDescripcion, strIdUnidad, strIdTipo;
            Decimal dcPrecio;
            strIdProducto = txtIdProducto.Text;
            strDescripcion = txtDesPro.Text;
            dcPrecio = Convert.ToDecimal(txtPrePro.Text);
            strIdUnidad = ddlIdUnidad.SelectedItem.Text;
            strIdTipo = ddlIdTipo.SelectedItem.Value;
            string StrCadenaConexion =
            ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string StrComandoSql = "INSERT PRODUCTO " +
            "(IdProducto,DesPro,PrePro,IdUnidad,IdTipo) VALUES (" +
            "'" + strIdProducto + "','" + strDescripcion +
            "'," + FnComaPorPunto(dcPrecio) +
            ",'" + strIdUnidad + "','" + strIdTipo + "');";
            using (SqlConnection conexion = new SqlConnection(StrCadenaConexion))
            {
                try
                {
                    conexion.Open();
                    SqlCommand comando = conexion.CreateCommand();
                    comando.CommandText = StrComandoSql;
                    int inRegistrosAfectados = comando.ExecuteNonQuery();
                    if (inRegistrosAfectados == 1)
                        lblMensajes.Text = "Registro insertado correctamente";
                    else
                        lblMensajes.Text = "Error al insertar el registro";
                    btnNuevo.Visible = true;
                }
                catch (SqlException ex)
                {
                    string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
                    StrError = StrError + "<div>Código: " + ex.Number + "</div>";
                    StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
                    lblMensajes.Text = StrError;
                    return;
                }
            }
            grdProductos.DataBind();
            grdProductos.SelectedIndex = -1;
            FnDeshabilitarControles();
        }

        protected string FnComaPorPunto(decimal Numero)
        {
            string StrNumero = Convert.ToString(Numero);
            string stNumeroConPunto = String.Format("{0}", StrNumero.Replace(',', '.'));
            return (stNumeroConPunto);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";
            btnNuevo.Visible = true;
            btnEditar.Visible = false;
            btnEliminar.Visible = false;
            btnInsertar.Visible = false;
            btnModificar.Visible = false;
            btnBorrar.Visible = false;
            btnCancelar.Visible = false;
            txtIdProducto.Text = "";
            txtDesPro.Text = "";
            txtPrePro.Text = Convert.ToString(0);
            ddlIdUnidad.DataBind();
            ddlIdTipo.DataBind();
            grdProductos.SelectedIndex = -1;
            FnDeshabilitarControles();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            //HABILIDADES DE BOTONES
            lblMensajes.Text = "";
            btnNuevo.Visible = false;
            btnEditar.Visible = false;
            btnEliminar.Visible = false;
            btnInsertar.Visible = true;
            btnModificar.Visible = true;
            btnBorrar.Visible = false;
            btnCancelar.Visible = true;


            //LOS TEXTBOX
            txtPrePro.Text = Convert.ToString(0); //el de precio queda en 0
            ddlIdUnidad.DataBind();
            // Vuelve a enlazar el control para que se actualicen los datos
            ddlIdTipo.DataBind();
            grdProductos.SelectedIndex = -1;
            FnHabilitarControles();
            txtIdProducto.Enabled = false;
            txtIdProducto.Focus();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";

            // Recupera los datos de los controles
            string strIdProducto = txtIdProducto.Text;
            string strDescripcion = txtDesPro.Text;
            decimal dcPrecio = Convert.ToDecimal(txtPrePro.Text);
            string strIdUnidad = ddlIdUnidad.SelectedItem.Text;
            string strIdTipo = ddlIdTipo.SelectedItem.Value;

            // Define la declaración SQL de actualización utilizando parámetros
            string update = "UPDATE PRODUCTO " +
                           "SET DesPro = @Descripcion, " + //"@"es un marcador de posición para un parámetro en una consulta SQL 
                           "PrePro = @Precio, " +
                           "IdUnidad = @IdUnidad, " +
                           "IdTipo = @IdTipo " +
                           "WHERE IdProducto = @IdProducto";
            //Los valores para estos "@" parámetros se establecen en tiempo de ejecución utilizando el método Parameters.
            //AddWithValue en el objeto SqlCommand.


            //ESTABLECER CONEXION
            string StrCadenaConexion = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


            /*USING: Crea una conexión a la base de datos utilizando la cadena de conexión especificada en 
             * StrCadenaConexion y garantiza que la conexión se cierre de manera adecuada una vez que
             * se haya completado la ejecución del código dentro del bloque using*/

            using (SqlConnection conexion = new SqlConnection(StrCadenaConexion)) //INICIO CONEXION
            {
                try
                {
                    conexion.Open();
                    SqlCommand comando = new SqlCommand(update, conexion); //OBJETO QUE UTILIZA LA CONEXION Y EL UPDATE

                    // Agrega parámetros a la declaración SQL
                    comando.Parameters.AddWithValue("@Descripcion", strDescripcion);
                    comando.Parameters.AddWithValue("@Precio", dcPrecio);
                    comando.Parameters.AddWithValue("@IdUnidad", strIdUnidad);
                    comando.Parameters.AddWithValue("@IdTipo", strIdTipo);
                    comando.Parameters.AddWithValue("@IdProducto", strIdProducto);

                    // Ejecuta la declaración SQL de actualización y devuelve la cantidad de filas afectadas
                    int rowsAffected = comando.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMensajes.Text = "Registro actualizado correctamente.";
                    }
                    else
                    {
                        lblMensajes.Text = "No se pudo actualizar el registro.";
                    }

                    // Actualiza la visibilidad de los botones según sea necesario
                    btnInsertar.Visible = true;
                    btnModificar.Visible = false;
                }
                catch (SqlException ex)
                {
                    string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
                    StrError = StrError + "<div>Código: " + ex.Number + "</div>";
                    StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
                    lblMensajes.Text = StrError;
                }
            } //CIERRE CONEXION

            // Actualiza el grid y restablece los controles
            grdProductos.DataBind();
            grdProductos.SelectedIndex = -1;
            FnDeshabilitarControles();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            lblMensajes.Text = "";

            // Recupera el ID del producto que se eliminará
            string strIdProducto = txtIdProducto.Text;

            // Define la declaración SQL para eliminar un registro por su ID
            string deleteQuery = "DELETE FROM PRODUCTO WHERE IdProducto = @IdProducto";

            // Establecer la cadena de conexión a la base de datos
            string StrCadenaConexion = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            // Crear una conexión a la base de datos y utilizar la declaración DELETE
            using (SqlConnection conexion = new SqlConnection(StrCadenaConexion))
            {
                try
                {
                    conexion.Open();
                    SqlCommand comando = new SqlCommand(deleteQuery, conexion);

                    // Agregar el parámetro para el ID del producto a eliminar
                    comando.Parameters.AddWithValue("@IdProducto", strIdProducto);

                    // Ejecutar la declaración DELETE y obtener la cantidad de filas afectadas
                    int rowsAffected = comando.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMensajes.Text = "Registro eliminado correctamente.";
                    }
                    else
                    {
                        lblMensajes.Text = "No se pudo eliminar el registro. Es posible que el ID no exista.";
                    }

                    // Restablecer la visibilidad de los botones según sea necesario
                    btnInsertar.Visible = true;
                    btnModificar.Visible = false;
                    btnEliminar.Visible = false; // Puedes ocultar el botón "Eliminar" después de la eliminación.

                    // Actualiza el grid y restablece los controles
                    grdProductos.DataBind();
                    grdProductos.SelectedIndex = -1;
                    FnDeshabilitarControles();
                }
                catch (SqlException ex)
                {
                    string StrError = "<p>Se han producido errores en el acceso a la base de datos.</p>";
                    StrError = StrError + "<div>Código: " + ex.Number + "</div>";
                    StrError = StrError + "<div>Descripción: " + ex.Message + "</div>";
                    lblMensajes.Text = StrError;
                }
            } // Cierre de la conexión


            //PROPIEDADES DE BOTON CANCELAR
            lblMensajes.Text = "";
            btnNuevo.Visible = true;
            btnEditar.Visible = false;
            btnEliminar.Visible = false;
            btnInsertar.Visible = false;
            btnModificar.Visible = false;
            btnBorrar.Visible = false;
            btnCancelar.Visible = false;
            txtIdProducto.Text = "";
            txtDesPro.Text = "";
            txtPrePro.Text = Convert.ToString(0);
            ddlIdUnidad.DataBind();
            ddlIdTipo.DataBind();
            grdProductos.SelectedIndex = -1;
            FnDeshabilitarControles();


        }
    }
}