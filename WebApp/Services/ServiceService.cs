using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.DTOs;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;

namespace DotNetLocalDb.WebApp.Services;

public class ServiceService : IServiceService
{
    private readonly DataDbContext context;

    public ServiceService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateService(ServiceDTO serviceDTO)
    {
        Service service = new()
        {
            StoreMediaId = serviceDTO.StoreMediaId,
            QuotationId = serviceDTO.QuotationId,
            QtySelected = serviceDTO.QtySelected,
            DateStart = serviceDTO.DateStart.ToDateTime(TimeOnly.MinValue),
            DateEnd = serviceDTO.DateEnd,
        };

        context.Service.Add(service);
        context.SaveChanges();
    }
}