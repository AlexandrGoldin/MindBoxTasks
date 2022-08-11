
namespace MindboxTaskConsoleLibrary.Domain.Figures
{
    public class Triangle : IFigure
    {
        //private readonly string _name;
        public string _name;

        public Triangle()
        {
            _name = "Not a right Triangle";
        }

        public string Name => _name;
        public double Area { get; set; }

        public double GetArea() => Area;
    }
}
