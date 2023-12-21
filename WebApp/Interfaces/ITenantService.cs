using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface ITenantService
{
    public List<Tenant> GetAllTenants();
}