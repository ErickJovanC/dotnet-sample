using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Services;

public class RestrictionService : IRestrictionService
{
    private readonly DataDbContext context;

    public RestrictionService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateRestriction(Restriction restriction)
    {
        RestrictionEntity restrictionEntity = new()
        {
            DateStart = restriction.DateStart,
            DateEnd = restriction.DateEnd,
        };

        context.Restriction.Add(restrictionEntity);
        context.SaveChanges();

        Console.WriteLine($"Este es el ID de la restricctión: {restrictionEntity.RestrictionId}");

        RestrictionEntityEntity restrictionEntityEntity = new ()
        {
            RestrictionId = restrictionEntity.RestrictionId,
            EntityId = restriction.EntityId,
        };

        context.RestrictionEntity.Add(restrictionEntityEntity);
        context.SaveChanges();
    }

    public void DeleteRestriction(int id)
    {
        throw new NotImplementedException();
    }

    public void DeleteRestrictionEntity(int id)
    {
        throw new NotImplementedException();
    }

    public List<RestrictionEntity> GetAllRestrictions()
    {
        throw new NotImplementedException();
    }

    public RestrictionEntity GetRestrictionById(int id)
    {
        throw new NotImplementedException();
    }

    public RestrictionEntityEntity GetRestrictionEntitiesByRestrictionId(int restrictionId)
    {
        throw new NotImplementedException();
    }

    public void UpdateRestrictionEntity(RestrictionEntity restrictionEntity, int id)
    {
        throw new NotImplementedException();
    }
}