using MindboxTaskConsoleLibrary.Domain.Figures;

namespace MindboxTaskConsoleLibrary.Factories
{
    abstract public class FigureFactory
    {
        abstract public IFigure GetArea();
    }
}
