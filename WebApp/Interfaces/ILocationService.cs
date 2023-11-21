using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface ILocationService
{
    StateEntity GetStateEntityById(int stateId);
    List<StateEntity> GetAllStates();
}