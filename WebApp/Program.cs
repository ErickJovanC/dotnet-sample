var builder = WebApplication.CreateBuilder(args);

// builder.Services.AddControllersWithViews();
var defaultConnectionString = builder.Configuration.GetConnectionString("DefaultConnection");

var app = builder.Build();

// if (!app.Environment.IsDevelopment()) {
//     app.UseExceptionHandler("/Home/Error");
//     app.UseHsts(); // 30 days
// } else {
    var baseDir = app.Environment.ContentRootPath;
    AppDomain.CurrentDomain.SetData("DataDirectory", Path.Combine(baseDir, "App_Data"));
// }

// app.UseStaticFiles();
// app.UseRouting();

// app.MapControllers();

app.MapGet("/", () => "Hello World!");
app.MapGet("/createdb", () => {
    System.Console.WriteLine("Creating DB...");
    Sistrategia.Data.SqlClient.SqlDatabaseCreator.CreateDatabase(defaultConnectionString);
    System.Console.WriteLine("Success DB Created");
    return "Base de datos Creada";
});

app.MapGet("createSchema", () => {
    System.Console.WriteLine("Creating Schema...");
    var sqlBuilder = new DotNetLocalDb.WebApp.SqlSchemaBuilder(defaultConnectionString);
    sqlBuilder.CreateSchema();
    System.Console.WriteLine("Success Schema Created");
});

app.MapGet("dropSchema", () => {
    System.Console.WriteLine("Droping Schema...");
    var sqlBuilder = new DotNetLocalDb.WebApp.SqlSchemaBuilder(defaultConnectionString);
    sqlBuilder.DropSchema();
    System.Console.WriteLine("Success Schema Drop");
});

app.Run();