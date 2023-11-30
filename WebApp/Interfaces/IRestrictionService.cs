using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IRestrictionService
{
    public List<RestrictionEntity> GetAllRestrictions();
    public RestrictionEntity GetRestrictionById(int id);
    public RestrictionEntityEntity GetRestrictionEntitiesByRestrictionId(int restrictionId);
    public void CreateRestriction(Restriction restriction);
    public void UpdateRestrictionEntity(RestrictionEntity restrictionEntity, int id);
    public void DeleteRestrictionEntity(int id);
    public void DeleteRestriction(int id);
}