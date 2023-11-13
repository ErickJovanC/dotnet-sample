using Microsoft.EntityFrameworkCore;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Data;

public class DataDbContext : DbContext
{
    public DataDbContext(DbContextOptions<DataDbContext> options) : base(options) { }

    public DbSet<StoreEntity> Store { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Especificamos el esquema y el nombre de la tabla
            modelBuilder.Entity<StoreEntity>().ToTable("store", schema: "Stores");
        }
}