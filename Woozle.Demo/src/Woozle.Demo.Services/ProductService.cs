using System.Collections.Generic;
using AutoMapper;
using Woozle.Persistence;
using Woozle.Services;
using Woozle.Services.Authentication;

namespace Woozle.Demo.Services
{
    [MandatorAuthenticate]
    public class ProductService : AbstractService
    {
        private readonly IRepository<Model.Product> productRepository;

        public ProductService(IRepository<Model.Product> productRepository)
        {
            this.productRepository = productRepository;
        }

        [ExceptionCatcher]
        public IList<Product> Get(Products request)
        {
            var result = productRepository.FindAll(Session);
            return Mapper.Map<IList<Model.Product>, List<Product>>(result);
        }

    }
}
