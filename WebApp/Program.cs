using Microsoft.EntityFrameworkCore;
using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Services;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllers()
    .AddJsonOptions(x => x.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<DataDbContext>(
    options => {
        options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"));
    }
);

builder.Services.AddTransient<IStoreService, StoreService>();
builder.Services.AddTransient<IMediaService, MediaService>();
builder.Services.AddTransient<ILocationService, LocationService>();
builder.Services.AddTransient<IBrandService, BrandService>();
builder.Services.AddTransient<IRestrictionService, RestrictionService>();

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

// app.MapGet("/", () => "Hello World!");
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

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(builder => builder
    .WithOrigins("*")
    .AllowAnyMethod()
    .AllowAnyHeader()
);

app.UseHttpsRedirection();
app.UseAuthorization();
app.MapControllers();
app.Run();