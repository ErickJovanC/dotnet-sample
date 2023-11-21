using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Services;

public class LocationService : ILocationService
{
    private readonly DataDbContext context;

    public LocationService(DataDbContext context)
    {
        this.context = context;
    }

    public List<StateEntity> GetAllStates()
    {
        return context.State.ToList();
    }

    public StateEntity GetStateEntityById(int storeId)
    {
        return context.State.Find(storeId);
    }
}