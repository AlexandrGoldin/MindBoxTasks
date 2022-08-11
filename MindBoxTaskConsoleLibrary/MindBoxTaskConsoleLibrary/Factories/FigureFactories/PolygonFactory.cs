using MindboxTaskConsoleLibrary.Domain.Figures;
using System;

namespace MindboxTaskConsoleLibrary.Factories
{
    public class PolygonFactory : FigureFactory
    {
        private readonly int[,] _coord;
        private readonly int _n;

        public PolygonFactory(int n, int[,] coord)
        {
            _n = n;
            _coord = coord;
        }

        public override IFigure GetArea()
        {
            double area = default(double);

            for (int i = 0; i < _n - 1; i++)
            {
                area += _coord[0, i] * _coord[1, i + 1] - _coord[1, i] * _coord[0, i + 1];
            }

            area += _coord[0, _n - 1] * _coord[1, 0] - _coord[1, _n - 1] * _coord[0, 0];

            Polygon poligon = new Polygon()
            {
                Area =Math.Round( Math.Abs(area) / 2, 3)
            };

            return poligon;
        }
    }
}
