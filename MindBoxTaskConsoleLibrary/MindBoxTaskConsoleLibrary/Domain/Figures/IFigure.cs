
namespace MindboxTaskConsoleLibrary.Domain.Figures
{
    public interface IFigure
    {
        string Name { get; }

        double GetArea();
    }
}
