using DotNetLocalDb.WebApp.Data;
using DotNetLocalDb.WebApp.Entities;
using DotNetLocalDb.WebApp.Interfaces;
using DotNetLocalDb.WebApp.Models;

namespace DotNetLocalDb.WebApp.Services;

public class MediaService : IMediaService
{
    private readonly DataDbContext context;

    public MediaService(DataDbContext context)
    {
        this.context = context;
    }

    public void CreateMedia(Media media)
    {
        MediaEntity mediaEntity = new()
        {
            MediaCategoryId = media.MediaCategoryId,
            Name = media.Name,
            Description = media.Description,
            Cost = media.Cost,
            Price = media.Price,
            MinimumUnits = media.MinimumUnits,
            // IsByBlocks = media.IsByBlocks,
            IsCountable = media.IsCountable,
            IsActive = media.IsActive,
        };
        
        context.Media.Add(mediaEntity);
        context.SaveChanges();
    }

    public void DeleteMedia(int mediaId)
    {
        MediaEntity mediaToDelete = this.GetMediaEntityById(mediaId);
        context.Remove(mediaToDelete);
        context.SaveChanges();
    }

    public List<MediaEntity> GetAllMedia()
    {
        return context.Media.ToList();
    }

    public MediaEntity GetMediaEntityById(int mediaId)
    {
        return context.Media.Find(mediaId);
    }

    public void UpdateMedia(Media media, int mediaId)
    {
        MediaEntity mediaEntity = this.GetMediaEntityById(mediaId);
        mediaEntity.MediaCategoryId = media.MediaCategoryId;
        mediaEntity.Name = media.Name;
        mediaEntity.Description = media.Description;
        mediaEntity.Cost = media.Cost;
        mediaEntity.Price = media.Price;
        mediaEntity.MinimumUnits = media.MinimumUnits;
        mediaEntity.IsByBlocks = media.IsByBlocks;
        mediaEntity.IsCountable = media.IsCountable;
        mediaEntity.IsActive = media.IsActive;
        context.Update(mediaEntity);
        context.SaveChanges();
    }

    public List<MediaEntity> GetMediaAvailablesInStores(int[] storeIds)
    {
        var storeMediaAvaibles = context.StoreMedia
            .Where(sma => storeIds.Contains(sma.StoreId)
                && sma.IsAvailable == true)
            .Select(sma => sma.MediaId);

        Console.WriteLine(storeMediaAvaibles);

        List<MediaEntity> media = context.Media
            .Where(m => storeMediaAvaibles.Contains(m.MediaId)
                && m.IsActive == true)
            .ToList();

        return media;
    }
}