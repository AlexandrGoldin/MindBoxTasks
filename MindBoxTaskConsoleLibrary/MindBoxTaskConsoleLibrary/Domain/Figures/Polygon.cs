
namespace MindboxTaskConsoleLibrary.Domain.Figures
{
    public class Polygon : IFigure
    {
        //private readonly string _name;
        public string _name;

        public Polygon()
        {
            _name = "Poligon";
        }

        public string Name => _name;
        public double Area { get; set; }

        public double GetArea() => Area;
    }
}
