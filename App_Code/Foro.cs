using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de Foro
/// </summary>
public class Foro
{
    SqlConnection Conexion = new SqlConnection();

    string Error;
    public string MostrarError
    {
        get { return Error; }
        set { Error = value; }
    }

    private bool ConectarServer()
    {
        bool respuesta = false;
        string cadenaConexion = @"Data Source=JAVIER\BD;Initial Catalog=BD;Integrated Security=True;Pooling=False";
        try
        {
            Conexion.ConnectionString = cadenaConexion;
            Conexion.Open();
            respuesta = true;

        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "No se ha podido conectar con el servidor. Mensaje de la excepción: " + ex.Message.ToString();
        }
        return respuesta;
    }

    public bool Registrar(string tabla, string campos, string valores)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = Conexion;
            //INSERT INTO Productos(NombreProducto, Descripc...) VALUES('Celular', 'Tiene boto..'..);
            comando.CommandText = "INSERT INTO " + tabla + "(" + campos + ") VALUES(" + valores + ");";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "Mensaje de la excepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }

        return respuesta;
    }

    public int CalcularEdad(Object fecha){
        DateTime now = DateTime.Now;
        DateTime birthDate = Convert.ToDateTime(fecha);
        int age = now.Year - birthDate.Year;
        if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day))
        age--;
        return age;
        }

    public string DevolverTipo(string id_grupo) { 
        if (id_grupo == "1") return "Usuario Comun";
        if (id_grupo == "2") return "Moderador";
        else return "Administrador";
    }
        

    public bool Modificar(string tabla, string campos, string condicion)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = Conexion;
            //UPDATE Productos SET NombreProducto = 'Arroz' WHERE CodigoProductos = 1;
            comando.CommandText = "UPDATE " + tabla + " SET " + campos + " WHERE " + condicion + ";";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "Mensaje de la excepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }

        return respuesta;
    }

    public bool Eliminar(string tabla, string condicion)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = Conexion;
            //DELETE FROM Productos WHERE CodigoProductos = 7;
            comando.CommandText = "DELETE FROM " + tabla + " WHERE " + condicion + ";";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "Mensaje de la excepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }

        return respuesta;
    }

    public DataSet MostrarUsuario (string nombre)
    {
        DataSet respuesta = new DataSet();
        try
        {
            //SELECT * FROM Productos;
            string instruccionSQL = "SELECT * FROM usuario WHERE nombre="+ nombre +";";
            SqlDataAdapter adaptador = new SqlDataAdapter(instruccionSQL, Conexion);
            if (ConectarServer())
            {
                adaptador.Fill(respuesta, "usuario");
            }
        }
        catch (Exception ex)
        {
            MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }
        return respuesta;
    }

    public DataSet MostrarCondicion(string tabla, string condicion)
    {
        DataSet respuesta = new DataSet();
        try
        {
            //SELECT * FROM Productos;
            string instruccionSQL = "SELECT * FROM " + tabla + " WHERE " + condicion + ";";
            SqlDataAdapter adaptador = new SqlDataAdapter(instruccionSQL, Conexion);
            if (ConectarServer())
            {
                adaptador.Fill(respuesta, tabla);
            }
        }
        catch (Exception ex)
        {
            MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }
        return respuesta;
    }


    public bool buscarProducto(string tabla, string condicion)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = Conexion;
            comando.CommandText = "SELECT * FROM " + tabla + " WHERE " + condicion + ";";
            if (ConectarServer())
            {
                SqlDataReader leer = comando.ExecuteReader();
                if (leer.HasRows)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }

        return respuesta;
    }

    public bool Verificar(string tabla, string condicion, string condicion2)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = Conexion;
            comando.CommandText = "SELECT * FROM " + tabla + " WHERE " + condicion + " " + condicion2 + ";";
            if (ConectarServer())
            {
                SqlDataReader leer = comando.ExecuteReader();
                if (leer.HasRows)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }
        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }

        return respuesta;
    }

    public bool Eliminar2(string tabla, string condicion)
    {
        bool respuesta = false;

        try
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = Conexion;
            //DELETE FROM Productos WHERE CodigoProductos = 7;
            comando.CommandText = "DELETE FROM " + tabla + " WHERE " + condicion + ";";
            if (ConectarServer())
            {
                if (comando.ExecuteNonQuery() == 1)
                    respuesta = true;
                else
                    respuesta = false;
            }
            else
            {
                respuesta = false;
            }

        }
        catch (Exception ex)
        {
            respuesta = false;
            MostrarError = "Mensaje de la excepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }

        return respuesta;
    }

    public DataSet MostrarRegistrosEditar(string tabla, string condicion)
    {
        DataSet respuesta = new DataSet();
        try
        {
            string instruccionSQL = "SELECT * FROM " + tabla + " WHERE " + condicion + ";";
            SqlDataAdapter adaptador = new SqlDataAdapter(instruccionSQL, Conexion);
            if (ConectarServer())
            {
                adaptador.Fill(respuesta, tabla);
            }
        }
        catch (Exception ex)
        {
            MostrarError = "Mensaje de la exepción: " + ex.Message.ToString();
        }
        finally
        {
            Conexion.Close();
        }
        return respuesta;
    }
}