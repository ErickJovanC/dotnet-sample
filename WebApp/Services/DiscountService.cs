using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.DTOs;


namespace DotNetLocalDb.WebApp.Services;

public class DiscountService : IDiscountService
{
    private readonly DataDbContext context;

    public DiscountService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateDiscount(DiscountDTO discountDTO)
    {
        Discount discount = new()
        {
            Name = discountDTO.Name,
            Percentage = discountDTO.Percentage,
            DateStart = discountDTO.DateStart,
            DateEnd = discountDTO.DateEnd,
        };

        context.Discount.Add(discount);
        context.SaveChanges();
    }

    public void AddEntityToDiscount(DiscountEntityDTO discountEntityDTO)
    {
        DiscountEntity discountEntity = new ()
        {
            DiscountId = discountEntityDTO.DiscountId,
            EntityId = discountEntityDTO.EntityId,
        };

        context.DiscountEntity.Add(discountEntity);
        context.SaveChanges();
    }

    public void AddValidationToDiscount(DiscountValidationDTO discountValidationDTO)
    {
        DiscountValidation discountValidation = new ()
        {
            DiscountId = discountValidationDTO.DiscountId,
            EntityId = discountValidationDTO.EntityId,
            Qty = discountValidationDTO.Qty,
        };

        context.DiscountValidation.Add(discountValidation);
        context.SaveChanges();
    }
}