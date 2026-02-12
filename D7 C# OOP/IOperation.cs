namespace Day7OOPDemoLab
{
    public interface IOperation
    {
        void Save(Employee Entity);
        void GetAll();
        Employee GetById(int id);
        void Update(int id, Employee NewEntity);
        void Delete(int id);
    }
}

