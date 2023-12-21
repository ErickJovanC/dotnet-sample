using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Services;

public class StoreService : IStoreService
{
    private readonly DataDbContext context;

    public StoreService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateStore(Store store)
    {
        StoreEntity storeEntity = new()
        {
            Name = store.Name,
            StoreFormatId = store.StoreFormatId,
            RegionId = store.RegionId,
            StateId = store.StateId,
            Location = store.Location,
        };
        
        context.Store.Add(storeEntity);
        context.SaveChanges();
    }

    public void DeleteStore(int storeId)
    {
        StoreEntity storeToDelete = this.GetStoreEntityById(storeId);
        context.Remove(storeToDelete);
        context.SaveChanges();
    }

    public List<StoreEntity> GetAllStores()
    {
        return context.Store.ToList();
    }

    public List<StoreFormat> GetAllFormats()
    {
        return context.StoreFormat.ToList();
    }

    public StoreEntity GetStoreEntityById(int storeId)
    {
        return context.Store.Find(storeId);
    }

    public void UpdateStore(Store store, int storeId)
    {
        StoreEntity storeEntity = this.GetStoreEntityById(storeId);
        storeEntity.Name = store.Name;
        storeEntity.StoreFormatId = store.StoreFormatId;
        storeEntity.RegionId = store.RegionId;
        storeEntity.StateId = store.StateId;
        storeEntity.Location = store.Location;

        context.Update(storeEntity);
        context.SaveChanges();
    }
}