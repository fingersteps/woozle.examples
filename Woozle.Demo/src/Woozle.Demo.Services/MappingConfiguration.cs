using AutoMapper;

namespace Woozle.Demo.Services
{
    public class MappingConfiguration
    {
        public static void Configure()
        {
            Mapper.Configuration.AllowNullDestinationValues = true;
            Mapper.CreateMap<Model.Product, Product>();
        }
    }
}
