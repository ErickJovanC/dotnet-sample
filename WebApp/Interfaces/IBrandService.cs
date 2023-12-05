using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IBrandService
{
    void CreateBrand(Brand media);
    void UpdateBrand(Brand media, int mediaId);
    void DeleteBrand(int mediaId);
    BrandEntity GetBrandEntityById(int mediaId);
    List<BrandEntity> GetAllBrand();
    List<Category> GetAllCategories();
}