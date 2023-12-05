using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Services;

public class BrandService : IBrandService
{
    private readonly DataDbContext context;

    public BrandService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateBrand(Brand brand)
    {
        EntityEntity entityEntity = new()
        {
            EntityName = brand.Name,
            EntityTypeId = 4,
        };

        context.Entity.Add(entityEntity);
        context.SaveChanges();

        BrandEntity brandEntity = new()
        {
            BrandId = entityEntity.EntityId,
            Name = brand.Name,
            AdvertiserId = brand.AdvertiserId,
            CategoryId = brand.CategoryId,
        };
        
        context.Brand.Add(brandEntity);
        context.SaveChanges();
    }

    public void DeleteBrand(int brandId)
    {
        BrandEntity brandToDelete = this.GetBrandEntityById(brandId);
        context.Remove(brandToDelete);
        context.SaveChanges();
    }

    public List<BrandEntity> GetAllBrand()
    {
        return context.Brand.ToList();
    }

    public BrandEntity GetBrandEntityById(int brandId)
    {
        return context.Brand.Find(brandId);
    }

    public void UpdateBrand(Brand brand, int brandId)
    {
        BrandEntity brandEntity = this.GetBrandEntityById(brandId);
        brandEntity.Name = brand.Name;
        brandEntity.AdvertiserId = brand.AdvertiserId;
        brandEntity.CategoryId = brand.CategoryId;

        context.Update(brandEntity);
        context.SaveChanges();
    }

    public List<Category> GetAllCategories()
    {
        return context.Category.ToList();
    }
}