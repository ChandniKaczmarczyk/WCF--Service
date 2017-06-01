using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.Text;
using System.Web.ModelBinding;
namespace WCF_Application
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    [AspNetCompatibilityRequirements (RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class Service1 : IService1
    {
        public string DoWork()
        {
            return "Hello WCF Restful"; 
        }

        public int DoSquare(int value)
        {
            return value * value;
        }

        public int DoAddValue(AddValue addvalues)
        {
            return addvalues.value1 * addvalues.value2;
        }
    }

    public class AddValue
    {
        
        public int value1 { get; set; }
        public int value2 { get; set; }

        public AddValue()
        {
            value1 = 0;
            value2 = 0;
        }

    }
}
