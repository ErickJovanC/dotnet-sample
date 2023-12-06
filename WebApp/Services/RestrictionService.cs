using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.DTOs;
using Microsoft.EntityFrameworkCore;


namespace DotNetLocalDb.WebApp.Services;

public class RestrictionService : IRestrictionService
{
    private readonly DataDbContext context;

    public RestrictionService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateRestriction(RestrictionDTO restrictionDTO)
    {
        Restriction restriction = new()
        {
            DateStart = restrictionDTO.DateStart,
            DateEnd = restrictionDTO.DateEnd,
        };

        context.Restriction.Add(restriction);
        context.SaveChanges();

        List<RestrictionEntity> entities = new List<RestrictionEntity>();

        foreach (int entityId in restrictionDTO.EntitiesIds) {
            entities.Add(new RestrictionEntity {
                RestrictionId = restriction.RestrictionId,
                EntityId = entityId,
            });
        }
        
        context.RestrictionEntity.AddRange(entities);
        context.SaveChanges();
    }

    public List<Restriction> GetAllRestrictions()
    {
        return context.Restriction.Include(x => x.RestrictionEntity).ToList();
    }

    public Restriction GetRestrictionById(int restrictionId)
    {
        return context.Restriction.Find(restrictionId);
    }

    public void AddEntity(RestrictionEntityDTO restrictionEntityDTO)
    {
        RestrictionEntity restrictionEntity = new ()
        {
            RestrictionId = restrictionEntityDTO.RestrictionId,
            EntityId = restrictionEntityDTO.EntityId,
        };

        context.RestrictionEntity.Add(restrictionEntity);
        context.SaveChanges();
    }
}