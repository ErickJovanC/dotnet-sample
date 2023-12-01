using DotNetLocalDb.WebApp.DTOs;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IDiscountService
{
    void CreateDiscount(DiscountDTO discountDTO);
    public void AddEntityToDiscount(DiscountEntityDTO discountEntityDTO);
    public void AddValidationToDiscount(DiscountValidationDTO discountValidationDTO);
}