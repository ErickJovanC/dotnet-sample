using System.Data;
using System.Data.Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Logging;

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
        CreateSchemaObject("data");
        
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.data.create_schema_version.sql");

        CreateSchemaObject("entities");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.entities.create_entities_tables.sql");

        CreateSchemaObject("rules");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.create_rules_tables.sql");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.rules.create_entity_rules.sql");

        CreateSchemaObject("media");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.media.create_media_tables.sql");
        
        CreateSchemaObject("customers");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.customers.create_customer_tables.sql");

        CreateSchemaObject("regions");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.regions.create_region_tables.sql");

        CreateSchemaObject("states");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.states.create_state_tables.sql");

        CreateSchemaObject("stores");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.stores.create_store_tables.sql");

        CreateSchemaObject("requests");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.requests.create_request_tables.sql");

        CreateSchemaObject("quotations");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.quotations.create_quotation_table.sql");

        CreateSchemaObject("parties");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.parties.create_party_tables.sql");

        CreateSchemaObject("quantities");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.quantities.create_quantity_tables.sql");

        CreateSchemaObject("restrictions");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.restrictions.create_restriction_tables.sql");

        CreateSchemaObject("services");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.services.create_service_tables.sql");

        CreateSchemaObject("tenants");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.tenants.create_tenant_tables.sql");

        CreateSchemaObject("advertisers");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.advertisers.create_advertiser_tables.sql");

        CreateSchemaObject("brands");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.brands.create_brand_tables.sql");

        CreateSchemaObject("discounts");
        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.discounts.create_discount_tables.sql");

        RunLocalStoredCommands("DotNetLocalDb.WebApp.Scripts.samples.insert_sample_data_001.sql");
    }

    public void DropSchema()
    {
        DropTableIfExists("discounts", "discount_validations");
        DropTableIfExists("discounts", "discount_entity");
        DropTableIfExists("discounts", "discount");
        DropSchemaObjectIfExists("discounts");

        DropTableIfExists("brands", "brand");
        DropSchemaObjectIfExists("brands");

        DropTableIfExists("advertisers", "advertiser");
        DropSchemaObjectIfExists("advertisers");

        DropTableIfExists("tenants", "tenant");
        DropSchemaObjectIfExists("tenants");

        DropTableIfExists("services", "service");
        DropSchemaObjectIfExists("services");

        DropTableIfExists("restrictions", "restriction");
        DropTableIfExists("restrictions", "restriction_type");
        DropTableIfExists("restrictions", "restriction_entity");
        DropSchemaObjectIfExists("restrictions");

        DropTableIfExists("quantities", "quantity");
        DropSchemaObjectIfExists("quantities");

        DropTableIfExists("quotations", "quotation");
        DropTableIfExists("quotations", "quotation_request");
        DropSchemaObjectIfExists("quotations");

        DropTableIfExists("requests", "request_store");
        DropTableIfExists("requests", "request");
        DropSchemaObjectIfExists("requests");

        DropTableIfExists("stores", "store_media");
        DropTableIfExists("stores", "store");
        DropTableIfExists("stores", "store_format");
        DropSchemaObjectIfExists("stores");

        DropTableIfExists("regions", "region");
        DropSchemaObjectIfExists("regions");

        DropTableIfExists("customers", "customer");
        DropSchemaObjectIfExists("customers");

        DropTableIfExists("media", "media");
        DropTableIfExists("media", "category");
        DropSchemaObjectIfExists("media");

        DropTableIfExists("rules", "entity_rules");
        DropTableIfExists("rules", "rule");
        DropTableIfExists("rules", "rule_type");
        DropSchemaObjectIfExists("rules");

        DropTableIfExists("parties", "party");
        DropTableIfExists("parties", "party_type");
        DropSchemaObjectIfExists("parties");

        DropTableIfExists("entities", "entity");
        DropTableIfExists("entities", "entity_type");
        DropSchemaObjectIfExists("entities");

        DropTableIfExists("states", "state");
        DropSchemaObjectIfExists("states");

        DropTableIfExists("data", "schema_version");
        DropSchemaObjectIfExists("data");
    }


    #region Create Schema

    protected void CreateSchemaObject(string schema) =>
        ExecuteNonQuery(
            $"IF NOT EXISTS(SELECT * FROM sys.schemas WHERE name = N'{schema}') EXEC('CREATE SCHEMA [{schema}] AUTHORIZATION [dbo]');");

    protected void CreateSchemaObjectIfNotExists(string schema) =>
        ExecuteNonQuery(
            $"IF NOT EXISTS(SELECT * FROM sys.schemas WHERE name = N'{schema}') EXEC('CREATE SCHEMA [{schema}] AUTHORIZATION [dbo]');");

    #endregion

    #region Drop Schema

    protected void DropSchemaObject(string name) =>
        ExecuteNonQuery($"DROP SCHEMA [{name}]");

    protected void DropSchemaObjectIfExists(string name) =>
        ExecuteNonQuery($"IF EXISTS (SELECT * FROM sys.schemas WHERE name = N'{name}') BEGIN DROP SCHEMA [{name}] END");

    #endregion

    #region Drop Table

    protected void DropTable(string name) =>
        ExecuteNonQuery($"DROP TABLE [{name}]");

    protected void DropTable(string schema, string name) =>
        ExecuteNonQuery($"DROP TABLE [{schema}].[{name}]");

    protected void DropTableIfExists(string name) =>
        ExecuteNonQuery(
            $"IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[{name}]') AND type in (N'U')) DROP TABLE [{name}]");

    protected void DropTableIfExists(string schema, string name) =>
        ExecuteNonQuery(
            $"IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[{schema}].[{name}]') AND type in (N'U')) DROP TABLE [{schema}].[{name}]");

    #endregion



    #region Drop Views

    protected void DropView(string name)
    {
        ExecuteNonQuery($"DROP VIEW [{name}]");
    }

    protected void DropView(string schema, string name) =>
        ExecuteNonQuery($"DROP VIEW [{schema}].[{name}]");

    protected void DropViewIfExists(string name) =>
        ExecuteNonQuery(
            $"IF EXISTS (SELECT 1 FROM sys.views WHERE object_id = OBJECT_ID(N'[{name}]') AND type in (N'V')) DROP VIEW [{name}]");

    protected void DropViewIfExists(string schema, string name) =>
        ExecuteNonQuery(
            $"IF EXISTS (SELECT 1 FROM sys.views WHERE object_id = OBJECT_ID(N'[{schema}].[{name}]') AND type in (N'V')) DROP VIEW [{schema}].[{name}]");

    #endregion

    #region Drop Stored Procedure

    protected virtual void DropProcedure(string name) =>
        ExecuteNonQuery($"DROP PROCEDURE [dbo].[{name}]");

    protected virtual void DropProcedure(string schema, string name) =>
        ExecuteNonQuery($"DROP PROCEDURE [{schema}].[{name}]");

    protected virtual void DropProcedureIfExists(string name) =>
        ExecuteNonQuery(
            $"IF ( OBJECT_ID(N'[dbo].[{name}]') IS NOT NULL ) DROP PROCEDURE [dbo].[{name}]");

    protected virtual void DropProcedureIfExists(string schema, string name) =>
        ExecuteNonQuery(
            $"IF ( OBJECT_ID(N'[{schema}].[{name}]') IS NOT NULL ) DROP PROCEDURE [{schema}].[{name}]");

    #endregion



    #region Connections and Transactions

    /// <summary>
    /// Creates a connection for this database.
    /// </summary>
    /// <returns>
    /// The <see cref="DbConnection"/> for this database.
    /// </returns>
    /// <seealso cref="DbConnection"/>
    public virtual DbConnection CreateConnection()
    {
        DbConnection? newConnection = new SqlConnection(); // DbProviderFactory.CreateConnection();
        if (newConnection != null)
        {
            newConnection.ConnectionString = ConnectionString;
        } else
        {
            throw new NullReferenceException("DbProviderFactory cannot create a new connection.");
        }
        return newConnection;
    }

    /// <summary>
    /// Creates and opens a connection.
    /// </summary>                
    /// <returns>The opened connection.</returns>
    public DbConnection OpenConnection()
    {
        DbConnection? connection = null;
        try
        {
            try
            {
                connection = CreateConnection();
                connection.Open();
            } catch (Exception e)
            {
                //WriteToLog(e.Message, e); // ConnectionStringNoCredentials
                throw;
            }
            //WriteToLog("Connection opened");
        } catch
        {
            if (connection != null)
                connection.Close();
            throw;
        }
        return connection;
    }

    /// <summary>
    /// Creates a transaction for this database.
    /// </summary>
    /// <returns>
    /// The <see cref="DbTransaction"/> for this database.
    /// </returns>
    /// <seealso cref="DbTransaction"/>
    public virtual DbTransaction CreateTransaction()
    {
        var connection = OpenConnection();
        return connection.BeginTransaction();
    }

    #endregion

    #region Commands

    /// <summary>
    /// Returns a new instance of the provider's class that implements the 
    /// System.Data.DbCommand class.
    /// </summary>
    /// <returns>A new instance of System.Data.DbCommand.</returns>
    public virtual DbCommand? CreateCommand() => new SqlCommand(); // DbProviderFactory.CreateCommand();

    /// <summary>
    /// Returns a new instance of the provider's class that implements the 
    /// System.Data.DbCommand class.
    /// </summary>
    /// <param name="transaction">
    /// <para>The <see cref="IDbTransaction"/> to execute the command within.</para>
    /// </param>
    /// <returns></returns>
    public virtual DbCommand? CreateCommand(DbTransaction? transaction)
    {
        if (transaction == null) throw new ArgumentNullException(nameof(transaction));
        var command = CreateCommand();
        InitializeCommand(command, transaction);
        return command;
    }

    /// <summary>
    /// Returns a new instance of the provider's class that implements the 
    /// System.Data.IDbCommand class.
    /// </summary>
    /// <param name="commandType"></param>
    /// <param name="commandText"></param>
    /// <returns>A new instance of System.Data.IDbCommand.</returns>        
    public virtual DbCommand? CreateCommand(CommandType commandType, string? commandText)
    {
        if (string.IsNullOrEmpty(commandText))
            throw new ArgumentException("The value can not be null or an empty string.", nameof(commandText));
        var command = CreateCommand();
        if (command != null)
        {
            command.CommandType = commandType;
            command.CommandText = commandText;
        }
        return command;
    }

    /// <summary>
    /// Returns a new instance of the provider's class that implements the 
    /// System.Data.IDbCommand class.
    /// </summary>
    /// <param name="commandType"></param>
    /// <param name="commandText"></param>
    /// <returns>A new instance of System.Data.IDbCommand.</returns>        
    public virtual DbCommand? CreateCommandString(string? commandText) =>
        CreateCommand(CommandType.Text, commandText);

    #region Command Initialization

    /// <summary>
    /// <para>Assigns a <paramref name="transaction"/> to the <paramref name="command"/>.</para>
    /// </summary>
    /// <param name="command"><para>The command that contains the query to prepare.</para></param>
    /// <param name="transaction">The transaction to assign to the command.</param>
    protected static void InitializeCommand(DbCommand? command, DbTransaction? transaction)
    {
        if (command == null) throw new ArgumentNullException(nameof(command));
        if (transaction == null) throw new ArgumentNullException(nameof(transaction));

        InitializeCommand(command, transaction.Connection);
        command.Transaction = transaction;
    }

    /// <summary>
    /// <para>Assigns a <paramref name="connection"/> to the <paramref name="command"/>.</para>
    /// </summary>
    /// <param name="command"><para>The command that contains the query to prepare.</para></param>
    /// <param name="connection">The connection to assign to the command.</param>
    protected static void InitializeCommand(DbCommand? command, DbConnection? connection)
    {
        if (command == null) throw new ArgumentNullException(nameof(command));
        command.Connection = connection ?? throw new ArgumentNullException(nameof(connection));
    }

    #endregion

    #endregion

    #region ExecuteNonQuery

    /// <summary>
    /// Executes the <paramref name="command"/> and returns the number of rows affected.
    /// </summary>
    /// <param name="command">
    /// The command that contains the query to execute.
    /// </param>       
    /// <returns>The quantity of rows affected.</returns>
    public virtual int ExecuteNonQuery(DbCommand? command)
    {
        using (DbConnection connection = OpenConnection())
        {
            InitializeCommand(command, connection);
            return DoExecuteNonQuery(command);
        }
    }

    public int ExecuteNonQuery(CommandType commandType, string? commandText)
    {
        using var command = CreateCommand(commandType, commandText);
        return ExecuteNonQuery(command);
    }

    public int ExecuteNonQuery(string? commandText)
    {
        using var command = CreateCommandString(commandText);
        //Logger.LogTrace(commandText);
        return ExecuteNonQuery(command);
    }

    private int DoExecuteNonQuery(DbCommand? command)
    {
        if (command == null) throw new ArgumentNullException(nameof(command));
        try
        {
            // DateTime startTime = DateTime.Now;
            WriteToLog(command.CommandText);
            int rowsAffected = command.ExecuteNonQuery();
            // Write(startTime);
            return rowsAffected;
        } catch (Exception e)
        {
            WriteToLog(command.CommandText, e);
            throw;
        }
    }

    #endregion

    #region RunLocalStoredCommands

    protected void RunLocalStoredCommands(string resourceName)
    {
        RunLocalStoredCommands(
            System.Reflection.Assembly.GetExecutingAssembly(), resourceName);
    }

    public void RunLocalStoredCommands(System.Reflection.Assembly assembly, string resourceName)
    {
        if (resourceName == null)
            throw new ArgumentNullException(nameof(resourceName));
        var stream = assembly.GetManifestResourceStream(resourceName);
        if (stream == null)
            throw new ArgumentNullException(nameof(resourceName));
        TextReader textReader = new StreamReader(stream);
        RunLocalStoredCommands(textReader);
        System.Console.WriteLine($"Success Schema {resourceName}");
    }

    public void RunLocalStoredCommands(TextReader textReader)
    {
        SqlCommand? command = new SqlCommand();
        if (command != null)
        {
            command.CommandType = CommandType.Text;
            command.CommandText = textReader.ReadToEnd();

            SqlConnection? connection = new SqlConnection(ConnectionString);

            if (connection != null)
            {
                SqlTransaction? transaction = null;
                try
                {
                    connection.Open();
                    transaction = connection.BeginTransaction();
                    // transaction.IsolationLevel = IsolationLevel.ReadUncommitted;
                    command.Transaction = transaction;
                    command.Connection = connection;
                    command.ExecuteNonQuery();
                    transaction.Commit();
                } catch (Exception ex)
                {
                    ex.ToString();
                    if (transaction != null)
                        transaction.Rollback();
                    // throw ex;
                    throw;
                } finally
                {
                    // when trasaction is commited (transaction.Commit()) the .Net Framework set the connection property to null
                    // we need to get the connection from the command
                    if (connection != null && connection.State == ConnectionState.Open)
                        command.Connection.Close();
                }
            }
        }
    }

    #endregion

    #region Supporting Methods

    protected void WriteToLog(string? message)
    {
        //if (Logger.IsEnabled(LogLevel.Trace))
        //{
        //    Logger.LogTrace(message);
        //}
    }

    protected void WriteToLog(Exception exception)
    {
        //if (Logger.IsEnabled(LogLevel.Trace))
        //{
        //    Logger.LogTrace(exception, null);
        //}
    }

    protected void WriteToLog(string? message, Exception? exception)
    {
        //if (Logger.IsEnabled(LogLevel.Trace))
        //{
        //    Logger.LogTrace(exception, message);
        //}
    }

    #endregion
}