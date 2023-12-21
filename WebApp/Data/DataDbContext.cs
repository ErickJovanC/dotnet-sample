using Microsoft.EntityFrameworkCore;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Data;

public class DataDbContext : DbContext
{
    public DataDbContext(DbContextOptions<DataDbContext> options) : base(options) { }

    public DbSet<EntityEntity> Entity { get; set; }
    public DbSet<MediaEntity> Media { get; set; }
    public DbSet<BrandEntity> Brand { get; set; }
    public DbSet<Category> Category { get; set; }
    public DbSet<StoreEntity> Store { get; set; }
    public DbSet<StoreFormat> StoreFormat { get; set; }
    public DbSet<StateEntity> State { get; set; }
    public DbSet<RegionEntity> Region { get; set; }
    public DbSet<Restriction> Restriction { get; set; }
    public DbSet<RestrictionEntity> RestrictionEntity { get; set; }
    public DbSet<StoreMedia> StoreMedia { get; set; }
    public DbSet<Discount> Discount { get; set; }
    public DbSet<DiscountEntity> DiscountEntity { get; set; }
    public DbSet<DiscountValidation> DiscountValidation { get; set; }
    public DbSet<Quotation> Quotation { get; set; }
    public DbSet<Tenant> Tenant { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        /* // Cuando una tabla tiene una llave compuesta
        modelBuilder.Entity<AutorLibro>()
            .HasKey(al => new {al.AutorId, al.LibroId});
        // En este ejemplo la tabla pivote tiene los campos AutorId y LibroId como llave compuesta */
       

        // Especificamos el esquema y el nombre de la tabla
        // modelBuilder.Entity<MediaEntity>().ToTable("media", schema: "media");
        modelBuilder.Entity<StateEntity>().ToTable("state", schema: "states");
        modelBuilder.Entity<StoreEntity>().ToTable("store", schema: "stores");
        // modelBuilder.Entity<StoreMediaEntity>().ToTable("store_media", schema: "stores");

        modelBuilder.Entity<RestrictionEntity>()
            .HasKey(re => new { re.EntityId, re.RestrictionId });

        modelBuilder.Entity<DiscountEntity>()
            .HasKey(de => new { de.EntityId, de.DiscountId });

        modelBuilder.Entity<DiscountValidation>()
            .HasKey(de => new { de.EntityId, de.DiscountId });
    }
}