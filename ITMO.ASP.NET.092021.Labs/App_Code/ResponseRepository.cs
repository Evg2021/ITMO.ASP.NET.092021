using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITMO.ASP.NET._092021.Labs.App_Code
{
    public class ResponseRepository
    {
#pragma warning disable CS0436 // Тип конфликтует с импортированным типом
        private static ResponseRepository repository = new ResponseRepository();
#pragma warning restore CS0436 // Тип конфликтует с импортированным типом
        private List<GuestResponse> responses = new List<GuestResponse>();
#pragma warning disable CS0436 // Тип конфликтует с импортированным типом
        public static ResponseRepository GetRepository()
#pragma warning restore CS0436 // Тип конфликтует с импортированным типом
        {
            return repository;
        }
        public IEnumerable<GuestResponse> GetAllResponses()
        {
            return responses;
        }
        public void AddResponse(GuestResponse response)
        {
            responses.Add(response);
        }
    }
}