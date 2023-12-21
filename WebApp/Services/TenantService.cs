using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Services;

public class TenantService : ITenantService
{
    private readonly DataDbContext context;

    public TenantService(DataDbContext context)
    {
        this.context = context;
    }
    public List<Tenant> GetAllTenants()
    {
        return context.Tenant.ToList();
    }
}