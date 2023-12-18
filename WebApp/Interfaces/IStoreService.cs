using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IStoreService
{
    void CreateStore(Store store);
    void UpdateStore(Store store, int storeId);
    void DeleteStore(int storeId);
    StoreEntity GetStoreEntityById(int stateId);
    List<StoreEntity> GetAllStores();
    List<StoreFormat> GetAllFormats();
    public List<StoreMediaDTO> GetStoreMedia(int[] storeIds, int[] mediaIds);
}