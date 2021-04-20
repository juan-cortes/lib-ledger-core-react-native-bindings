// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from emitter.djinni

package co.ledger.core;

import java.util.concurrent.atomic.AtomicBoolean;

/** Class representing an event publisher. */
public abstract class EventPublisher {
    /**
     * Get event bus through which publisher broadcast its events.
     * @return EventBus object
     */
    public abstract EventBus getEventBus();

    /**
     * Broadcast an event through eventbus (to all subscribed receivers to this EventBus).
     * @param event, Event object
     */
    public abstract void post(Event event);

    /**
     * Same as post method but with an sticky event.
     * @param event, Event object
     * @param tag, 32 bits integer, tag of sticky event
     */
    public abstract void postSticky(Event event, int tag);

    /**
     * Relay an event to another EventBus (other than EventPublisher's event bus).
     * @param bus, EventBus object, through which we want to broadcast EventPublisher's event to EventPublisher's receiver
     */
    public abstract void relay(EventBus bus);
    /** Release the underlying native object */
    public abstract void destroy();


    /**
     * Create a new instance of EventPublisher class.
     * @param context, executionContext object, context in which event publisher broadcast its events
     */
    public static native EventPublisher newInstance(ExecutionContext context);

    private static final class CppProxy extends EventPublisher
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        @Override
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }

        @Override
        public EventBus getEventBus()
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (EventPublisher)");
            }
            return native_getEventBus(this.nativeRef);
        }
        private native EventBus native_getEventBus(long _nativeRef);

        @Override
        public void post(Event event)
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (EventPublisher)");
            }
            native_post(this.nativeRef, event);
        }
        private native void native_post(long _nativeRef, Event event);

        @Override
        public void postSticky(Event event, int tag)
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (EventPublisher)");
            }
            native_postSticky(this.nativeRef, event, tag);
        }
        private native void native_postSticky(long _nativeRef, Event event, int tag);

        @Override
        public void relay(EventBus bus)
        {
            if (this.destroyed.get())
            {
                throw new RuntimeException("trying to use a destroyed object (EventPublisher)");
            }
            native_relay(this.nativeRef, bus);
        }
        private native void native_relay(long _nativeRef, EventBus bus);
    }
}
