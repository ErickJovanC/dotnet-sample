using DotNetLocalDb.WebApp.DTOs;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IServiceService
{
    public void CreateService(ServiceDTO serviceDTO);
}