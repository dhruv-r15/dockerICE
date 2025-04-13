using System.ComponentModel.DataAnnotations;

namespace prjIceTask4.Models
{
    public class Product
    {
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Range(0.01, 10000)]
        public decimal Price { get; set; }
    }
}
