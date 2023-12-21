using DotNetLocalDb.WebApp.Models;
using DotNetLocalDb.WebApp.Entities;

namespace DotNetLocalDb.WebApp.Interfaces;

public interface IMediaService
{
    void CreateMedia(Media media);
    void UpdateMedia(Media media, int mediaId);
    void DeleteMedia(int mediaId);
    MediaEntity GetMediaEntityById(int mediaId);
    List<MediaEntity> GetAllMedia();
}