using System.Data;
using Microsoft.Data.SqlClient;

namespace DotNetLocalDb.WebApp;

public class SqlSchemaBuilder
{
    public SqlSchemaBuilder(string connectionString)
    {
        ConnectionString = connectionString;
    }

    public string ConnectionString { get; }

    public void CreateSchema()
    {
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.data.create_schema.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.data.create_schema_version.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.entities.create_entities_schema.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.entities.create_entities_tables.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.create_rules_schema.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.create_rules_tables.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.create_entity_rules.sql");
    }
    public void DropSchema()
    {
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.drop_rules_tables.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.drop_rules_schema.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.entities.drop_entities_table.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.entities.drop_entities_schema.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.data.drop_schema.sql");
    }

    protected void RunLocalStoredCommands(string resourceName) {
        RunLocalStoredCommands(
            System.Reflection.Assembly.GetExecutingAssembly(), resourceName);
    }

    public void RunLocalStoredCommands(System.Reflection.Assembly assembly, string resourceName) {
        if (resourceName == null)
            throw new ArgumentNullException(nameof(resourceName));
        var stream = assembly.GetManifestResourceStream(resourceName);
        if (stream == null)
            throw new ArgumentNullException(nameof(resourceName));
        TextReader textReader = new StreamReader(stream);
        RunLocalStoredCommands(textReader);
    }

    public void RunLocalStoredCommands(TextReader textReader) {
        SqlCommand? command = new SqlCommand();
        if (command != null) {
            command.CommandType = CommandType.Text;
            command.CommandText = textReader.ReadToEnd();

            SqlConnection? connection = new SqlConnection(ConnectionString);
            
            if (connection != null) {
                SqlTransaction? transaction = null;
                try {
                    connection.Open();
                    transaction = connection.BeginTransaction();
                    // transaction.IsolationLevel = IsolationLevel.ReadUncommitted;
                    command.Transaction = transaction;
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                    transaction.Commit();
                } catch (Exception ex) {
                    ex.ToString();
                    if (transaction != null)
                        transaction.Rollback();
                    // throw ex;
                    throw;
                } finally {
                    // when trasaction is commited (transaction.Commit()) the .Net Framework set the connection property to null
                    // we need to get the connection from the command
                    if (connection != null && connection.State == ConnectionState.Open)
                        command.Connection.Close();
                }
            }
        }
    }
}