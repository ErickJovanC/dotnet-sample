using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IRestrictionService
{
    public List<Restriction> GetAllRestrictions();
    public void CreateRestriction(RestrictionDTO restrictionDTO);
    public Restriction GetRestrictionById(int restrictionId);
    public void AddEntity(RestrictionEntityDTO restrictionEntityDTO);
}